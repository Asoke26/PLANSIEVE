SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 350.0
AND u.Reputation >= 572

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;