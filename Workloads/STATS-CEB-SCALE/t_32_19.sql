SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 75.0
AND u.Reputation >= 220

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;