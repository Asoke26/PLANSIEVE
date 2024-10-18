SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND p.Score >= 55
AND u.Reputation >= 3150
AND u.UpVotes >= 288
AND u.UpVotes <= 3274

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;