SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 37
AND p.Score >= 79
AND u.Reputation >= 109
AND u.UpVotes >= 121
AND u.UpVotes <= 613

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;