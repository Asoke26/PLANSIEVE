SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 100.0
AND u.Reputation >= 493

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;