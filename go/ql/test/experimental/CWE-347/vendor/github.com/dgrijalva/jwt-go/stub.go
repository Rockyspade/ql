// Code generated by depstubber. DO NOT EDIT.
// This is a simple stub for github.com/dgrijalva/jwt-go, strictly for use in testing.

// See the LICENSE file for information about the licensing of the original library.
// Source: github.com/dgrijalva/jwt-go (exports: Parser,Token; functions: ParseECPrivateKeyFromPEM,ParseECPublicKeyFromPEM,ParseRSAPrivateKeyFromPEM,ParseRSAPrivateKeyFromPEMWithPassword,ParseRSAPublicKeyFromPEM)

// Package jwt is a stub of github.com/dgrijalva/jwt-go, generated by depstubber.
package jwt

import (
	ecdsa "crypto/ecdsa"
	rsa "crypto/rsa"
)

type Claims interface {
	Valid() error
}

type Keyfunc func(*Token) (interface{}, error)

func ParseECPrivateKeyFromPEM(_ []byte) (*ecdsa.PrivateKey, error) {
	return nil, nil
}

func ParseECPublicKeyFromPEM(_ []byte) (*ecdsa.PublicKey, error) {
	return nil, nil
}

func ParseRSAPrivateKeyFromPEM(_ []byte) (*rsa.PrivateKey, error) {
	return nil, nil
}

func ParseRSAPrivateKeyFromPEMWithPassword(_ []byte, _ string) (*rsa.PrivateKey, error) {
	return nil, nil
}

func ParseRSAPublicKeyFromPEM(_ []byte) (*rsa.PublicKey, error) {
	return nil, nil
}

type Parser struct {
	ValidMethods         []string
	UseJSONNumber        bool
	SkipClaimsValidation bool
}

func (_ *Parser) Parse(_ string, _ Keyfunc) (*Token, error) {
	return nil, nil
}

func (_ *Parser) ParseUnverified(_ string, _ Claims) (*Token, []string, error) {
	return nil, nil, nil
}

func (_ *Parser) ParseWithClaims(_ string, _ Claims, _ Keyfunc) (*Token, error) {
	return nil, nil
}

type SigningMethod interface {
	Alg() string
	Sign(_ string, _ interface{}) (string, error)
	Verify(_ string, _ string, _ interface{}) error
}

type Token struct {
	Raw       string
	Method    SigningMethod
	Header    map[string]interface{}
	Claims    Claims
	Signature string
	Valid     bool
}

func (_ *Token) SignedString(_ interface{}) (string, error) {
	return "", nil
}

func (_ *Token) SigningString() (string, error) {
	return "", nil
}
